import discourseComputed from "discourse-common/utils/decorators";

export default Ember.Component.extend({
  classNameBindings: [':wiki-username', 'user.name:add-margin'],
  tagName: 'h2',
  
  didInsertElement() {
    Ember.run.scheduleOnce('afterRender', () => {
      const $el = $(this.element);
      $el.insertAfter('.full-name');
    })
  },
  
  @discourseComputed('user.wiki_username')
  wikiUserUrl(wikiUsername) {
    return this.siteSettings.wikimedia_auth_site + "/wiki/User:" + wikiUsername;
  }
});