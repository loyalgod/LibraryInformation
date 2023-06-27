<template>
    <div>
        <template>
            <div style="margin-top: 20px;margin-left: 40px;margin-bottom: 20px;">
            </div>
            <el-table :data="tableData" style="width: 100%"
                      @selection-change="handleSelectionChange" :row-class-name="tableRowClassName"
                      :header-cell-style="{background:'#f4f4f4',color:'#80878f'}">
                <el-table-column type="index" label="序号" width="100" align="center">
                </el-table-column>
<!--                <el-table-column prop="id" label="记录编号" align="center" sortable>-->
<!--                </el-table-column>-->
                <el-table-column prop="uid" label="用户名" align="center" sortable>
                </el-table-column>
                <el-table-column prop="bid" label="书籍编号" align="center" sortable>
                </el-table-column>
                <el-table-column prop="bdate" label="借阅时间" align="center" sortable>
                </el-table-column>
                <el-table-column prop="rdate" label="理应归还时间" align="center" sortable>
                </el-table-column>
                <el-table-column prop="overDays" label="逾期天数" align="center" sortable>
                </el-table-column>
                <el-table-column prop="money" label="应缴金额" align="center"></el-table-column>
            </el-table>
        </template>
    </div>
</template>
<script>
    const options = {
        data() {
            return {
                tableData: [{
                    index:'1',
                    uid:'kk',
                    bid:'1',
                    bdate:'2023-05-01 15:41:17',
                    rdate:'2023-05-31 15:41:17',
                    overDays:'25',
                    money:'2.5'
                }, {
                    index:'2',
                    uid:'tjw',
                    bid:'11',
                    bdate:'2023-05-15 16:23:17',
                    rdate:'2023-06-14 16:23:17',
                    overDays:'11',
                    money:'1.1'
                }]
            }
        },
        methods: {
            //获取当前时间
            getTime() {
                var date = new Date();
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getDate();
                var hour = date.getHours();
                var minute = date.getMinutes();
                var second = date.getSeconds();
                return year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
            }
        }
    }
    export default options;
</script>
<style>
    .el-table .warning-row {
        background: rgb(236, 188, 188);
    }

    .el-table .success-row {
        background: #f0f9eb;
    }
</style>