//
//  ContactsList.m
//  VisitingCards
//
//  Created by Serg on 09.03.16.
//  Copyright (c) 2016 Vitaliy Horodecky. All rights reserved.
//

#import "ContactsList.h"

@interface ContactsList () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) UITableView* tableView;

@end

@implementation ContactsList

- (void)loadView {
    [super loadView];
    
    CGRect frame = self.view.bounds;
    frame.origin = CGPointZero;
    UITableView* tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStyleGrouped];// создаем таблицу
    
    tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;// таблица заполняется во все окно
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Метод отображает название кнопки на таббаре
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibNameOrNil];
    
    if (self != nil) {
        self.title = @"Contacts";
        self.tabBarItem.image = [UIImage imageNamed:@"Contact Card-50.png"];
        
        self.tabBarItem.

    }
    return self;
}
#pragma mark - UITableViewDataSource



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* identifier = @"Cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];// xtсоздает ячейку, сдесь также можна менять стиль ячейки
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Section %ld, Row %ld", indexPath.section, indexPath.row];
    cell.detailTextLabel.text = @"Value";
    
    return cell;

}



@end
