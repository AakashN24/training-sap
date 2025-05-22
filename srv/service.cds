using {training.cap.db as db} from '../db/schema';

service catalogService {
    @odata.draft.enabled
    entity Users  as projection on db.Users;

    entity Users1 as projection on db.Users;
    entity Books  as projection on db.Books;
};
