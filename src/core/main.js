import { checkGridStability, softwareBreaker } from './power/gridStabilizer.js';
import jarvis from '../jarvis/brain.js';
import LabelManager from '../features/labels/labelController.js';

const runCore = async () => {
  console.log('👑 EMPEROR: Initializing DEATHSTAR Core...');

  // 1. Check Power Grid
  if (!checkGridStability()) {
    softwareBreaker('Unoptimized_Loop_Alpha');
  } else {
    console.log('SKYNET: Power Grid is Stable.');
  }

  // 2. Initialize JARVIS
  console.log(`JARVIS Status: ${jarvis.status}, Armor Suits: ${jarvis.armorSuits}`);
  const analysis = await jarvis.analyzeProblem(60);
  console.log(analysis);

  // 3. Initialize Labels
  const labels = new LabelManager('imperial_token');
  await labels.applyLabel(60, 'SAVAGE-FIX');

  console.log('🌌 THE GALAXY IS AT PEACE. SYSTEM ONLINE.');
};

runCore();
