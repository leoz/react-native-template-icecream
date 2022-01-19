//
import {createRealmContext} from '@realm/react';

import Task from './Task';

export default createRealmContext({
  schema: [Task.schema],
  //deleteRealmIfMigrationNeeded: true,
});
