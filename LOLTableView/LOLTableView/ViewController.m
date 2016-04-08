//
//  ViewController.m
//  LOLTableView
//
//  Created by  江苏 on 16/4/8.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSHeros.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray* heros;
@property(nonatomic,strong)UITableView* tableView;
@end

@implementation ViewController

-(NSArray *)heros{
    if (_heros==nil) {
        _heros=[JSHeros heros];
    }
    return _heros;
}

-(UITableView *)tableView{
    if (_tableView==nil) {
        _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.heros.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    JSHeros* hero=self.heros[indexPath.row];
    cell.textLabel.text=hero.name;
    cell.imageView.image=[UIImage imageNamed:hero.icon];;
    cell.detailTextLabel.text=hero.intro;
    return cell;
}
static NSString* identifier=@"cell";
- (void)viewDidLoad {
    [super viewDidLoad];
    //注册tableViewCell,使用系统模式或者自定义的cell不需要注册，注册后就是系统默认的cell了
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    [self tableView];
   
}
@end
