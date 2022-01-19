import {Realm, createRealmContext} from '@realm/react';

export class Task {
  constructor({
    id = new Realm.BSON.ObjectId().toString(),
    description,
    isComplete = false,
    isDeleted = false,
  }) {
    this.desc = description;
    this.isComplete = isComplete;
    this.isDeleted = isDeleted;
    this.createdAt = new Date();
    this.id = id;
  }

  // To use a class as a Realm object type, define the object schema on the static property "schema".
  static schema = {
    name: 'Task',
    primaryKey: 'id',
    properties: {
      id: 'string',
      desc: 'string',
      isComplete: {type: 'bool', default: false},
      isDeleted: {type: 'bool', default: false},
      createdAt: 'date',
    },
  };
}

export default createRealmContext({
  schema: [Task.schema],
  //deleteRealmIfMigrationNeeded: true,
});
