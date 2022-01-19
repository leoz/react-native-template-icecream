//
import React from 'react';

import RNSyncEngine from './native/RNSyncEngine';
import RealmContext from './models/RealmContext';
import Screen from './screens/Screen';

const App = () => {
  const {RealmProvider} = RealmContext;
  if (!RealmProvider) {
    return null;
  }
  RNSyncEngine.startEngine();
  return (
    <RealmProvider>
      <Screen />
    </RealmProvider>
  );
};

export default App;
