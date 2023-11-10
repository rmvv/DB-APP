
INSERT INTO role 
    (id, name)
VALUES 
    ('ADM', 'ADMIN'),
    ('CUS', 'CUSTOMER'),
    ('PUB', 'GUEST');

INSERT INTO status 
    (id, name)
VALUES 
    ('A', 'ACTIVE'),
    ('C', 'CLOSED');

INSERT INTO user 
    (id, name, password, role_id)
VALUES 
    ('U-001', 'admin', '1234', 'ADM'),
    ('U-002', 'raine', '1234', 'CUS');

INSERT INTO access 
    (id, role_id, feature, allowed)
VALUES 
    ('A-0001', 'ADM', 'create/role', 1),
    ('A-0002', 'ADM', 'update/role', 1),
    ('A-0003', 'ADM', 'search/role', 1),
    ('A-0004', 'ADM', 'remove/role', 1),
    ('A-0101', 'CUS', 'create/account', 1),
    ('A-0102', 'CUS', 'update/account', 1),
    ('A-0103', 'CUS', 'search/account', 1);
