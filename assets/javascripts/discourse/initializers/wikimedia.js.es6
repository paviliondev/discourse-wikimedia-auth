import { withPluginApi } from 'discourse/lib/plugin-api';
import { default as computed } from 'ember-addons/ember-computed-decorators';

export default {
  name: 'wikimedia',
  initialize() {
    withPluginApi('0.8.23', api => {
      api.modifyClass('controller:preferences/account', {
        @computed
        canUpdateAssociatedAccounts() {
          return false;
        }
      });
    });
  }
};