using {pdm} from './pdm-schema';
using {tickets} from './schema';
annotate tickets.Contact with @PersonalData :{
  EntitySemantics: 'DataSubject',
  DataSubjectRole: 'Customer',
  DataSubjectRoleDescription: 'Customer'
}
{
  ID     @PersonalData.FieldSemantics: 'DataSubjectID';
  firstName     @PersonalData.IsPotentiallyPersonal;
  lastName     @PersonalData.IsPotentiallyPersonal;
  email     @PersonalData.IsPotentiallyPersonal;
  creditcard     @PersonalData.IsPotentiallySensitive;
}
annotate tickets.contactaddress with @(PersonalData.EntitySemantics: 'DataSubjectDetails')
{
  street     @PersonalData.IsPotentiallyPersonal;
  number     @PersonalData.IsPotentiallyPersonal;
  postcode     @PersonalData.IsPotentiallyPersonal;
  city     @PersonalData.IsPotentiallyPersonal;
  state     @PersonalData.IsPotentiallyPersonal;
  country     @PersonalData.IsPotentiallyPersonal;
}