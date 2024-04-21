INSERT INTO projects (name, icon_url, description, deadline, created_at, updated_at) VALUES ('test_project', 'test_icon_url', 'test_description', '2014-01-01', date('2024/04/21'), date('2024/04/21')),('test_project2', 'test_icon_url2', 'test_description2', '2014-01-02', date('2024/04/21'), date('2024/04/21'));
INSERT INTO users (is_owner, icon_url, name, introduce, password, email, created_at, updated_at) VALUES (true, 'test_url1', 'test_user1', 'test_introduce1', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 'a', date('2024/04/21'), date('2024/04/21')),(false, 'test_url2', 'test_user2', 'test_introduce2', '$2a$10$JwMUEwh6hiB/NAMZ5VVOEOSGsdF8Uri4dldDwQI3Mm8R0U69zGFIK', 'test2@gmail.com', date('2024/04/21'), date('2024/04/21')),(false, 'test_url3', 'test_user3', 'test_introduce3', '$2a$10$MkIFq60lMNHtQdJPaSXiLOCpopZV2NahWktyGKrQBPm.kgikRV1ZO', 'test3@gmail.com', date('2024/04/21'), date('2024/04/21'));
-- userの暗号化する前のpasswordは「a」,「password2」,「password3」
INSERT INTO members (project_id, user_id) VALUES (1, 1),(1, 2),(1, 3);
INSERT INTO project_notices (log, project_id, created_at, updated_at) VALUES ('log1', 1, date('2024/04/21'), date('2024/04/21')),('log2', 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO user_notices (log, user_id, created_at, updated_at) VALUES ('log1', 1, date('2024/04/21'), date('2024/04/21')),('log2', 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO directories (name, project_id, created_at, updated_at) VALUES ('directory1', 1, date('2024/04/21'), date('2024/04/21')),('directory2', 1, date('2024/04/21'), date('2024/04/21'));
-- INSERT INTO files (name, file_url, directory_id, project_id, created_at, updated_at) VALUES ('file1', 'file_url1', 1, 1),('file2', 'file_url2', 1, 1);
INSERT INTO files (name, file_url, directory_id, created_at, updated_at) VALUES ('file1', 'file_url1', 1, date('2024/04/21'), date('2024/04/21')),('file2', 'file_url2', 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO skills (name, count_log, user_id, created_at, updated_at) VALUES ('skill1', 1, 1, date('2024/04/21'), date('2024/04/21')),('skill2', 2, 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO roles (name, count_log, user_id, created_at, updated_at) VALUES ('role1', 1, 1, date('2024/04/21'), date('2024/04/21')),('role2', 2, 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO chat_rooms (name, project_id, created_at, updated_at) VALUES ('chat_room1', 1, date('2024/04/21'), date('2024/04/21')),('chat_room1', 1, date('2024/04/21'), date('2024/04/21'));
-- INSERT INTO channels (name, chat_room_id, user_id, created_at, updated_at) VALUES ('chat_room1', 1, 1),('chat_room2', 1, 1);
INSERT INTO channels (name, chat_room_id, user_id, created_at, updated_at) VALUES ('channel1', 1, 1, date('2024/04/21'), date('2024/04/21')),('channel2', 1, 1, date('2024/04/21'), date('2024/04/21'));
-- INSERT INTO messages (text, content, user_id, chat_room_id, channel_id, created_at, updated_at) VALUES ('message1', 'content1', 1, 1, 1),('message2', 'content2', 1, 1, 1);
INSERT INTO messages (text, content, user_id, channel_id, created_at, updated_at) VALUES ('message1', 'content1', 1, 1, date('2024/02/10'), date('2024/02/11')),('message2', 'content2', 1, 1, date('2024/01/15'), date('2024/01/20'));
INSERT INTO followers (user_id, follower_id, created_at, updated_at) VALUES (1, 2, date('2024/04/21'), date('2024/04/21')),(1, 3, date('2024/04/21'), date('2024/04/21'));
-- INSERT INTO members (project_id, user_id, created_at, updated_at) VALUES (1, 1), (1,2)
INSERT INTO offers (message, scouted_user_id, user_id, created_at, updated_at) VALUES ('message1', 2, 1, date('2024/04/21'), date('2024/04/21')),('message2', 3, 1, date('2024/04/21'), date('2024/04/21'));
INSERT INTO owners (project_id, user_id, created_at, updated_at) VALUES (1, 1, date('2024/04/21'), date('2024/04/21')),(1, 2, date('2024/04/21'), date('2024/04/21'));
INSERT INTO projects_users (project_id, users_id) VALUES (1, 1),(1, 2),(2, 1);
INSERT INTO operations (project_id, log, created_at, updated_at) VALUES (1, 'ログ1', date('2024/01/15'), date('2024/01/20')),(1, 'ログ2', date('2024/02/15'), date('2024/02/20')),(2, 'ログ3', date('2024/03/15'), date('2024/03/20'));
INSERT INTO tasks (in_charge_user_id, is_done, project_id, deadline, name, description, created_at, updated_at) VALUES (1, false, 1, date('2024/10/15'), 'バックエンド実装', 'バックエンドの実装をJavaで行う', date('2024/01/20'), date('2024/01/20')),(2, true, 1, date('2024/10/16'), 'フロントエンド実装', 'フロントエンドの実装をVueで行う', date('2024/01/20'), date('2024/01/20'));
