/*
 * DEATHSTAR LABEL ENGINE
 * Purpose: Dynamic Taxonomy Management
 */

class LabelManager {
  constructor(apiKey) {
    this.api = 'https://api.github.com/repos/Electric-Service-Repair/DEATHSTAR/labels';
    this.auth = apiKey;
  }

  async applyLabel(issueId, labelName) {
    console.log('SKYNET: Applying ' + labelName + ' to Issue #' + issueId);
    // Logic for PATCH request goes here
  }
}

export default LabelManager;
