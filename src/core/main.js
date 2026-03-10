import { checkGridStability, softwareBreaker } from './power/gridStabilizer.js';

const runCore = () => {
  if (!checkGridStability()) {
    softwareBreaker('Unoptimized_Loop_Alpha');
  }
  console.log('SKYNET: Power Grid is Stable.');
};

runCore();
