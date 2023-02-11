<div class="tab-pane fade in active" id="member">
	
                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            <div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong><i class="icon-user icon-large"></i>&nbsp;Registered Member</strong>
                            </div>
                            <thead>
                                <tr>
                                    <th style="text-align:center; color:blue;">Name</th>
                                    <th style="text-align:center; color:blue;">Unique ID</th>
                                    <th style="text-align:center; color:blue;">Gender</th>
                                    <th style="text-align:center; color:blue;">Department</th>
                                    <th style="text-align:center; color:blue;">Admitting Session</th>
                                    <th style="text-align:center; color:blue;">Email Adress</th>
                                    <th style="text-align:center; color:blue;">Contact Number</th>
                                    <th style="text-align:center; color:blue;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php
							$query=mysqli_query($conn,"select * from reg_member")or die(mysqli_error());
							while($row=mysqli_fetch_array($query)){
							$id=$row['member_id'];
							?> 
                           		<tr class="del<?php echo $id ?>">
                                       <td><?php echo $row['fullname']; ?></td>
                                       <td><?php echo $row['uid']; ?></td>
                                       <td><?php echo $row['gender']; ?></td>
                                       <td><?php echo $row['dept']; ?></td>
                                       <td><?php echo $row['session']." ".$row['admityr']; ?></td>
                                       <td><?php echo $row['email']; ?></td>
                                       <td><?php echo $row['c_number']; ?></td>
                                       <td><?php echo $row['date']; ?></td>
                                       <td><a  uid="<?php echo $uid;?>" class="delete_member"><i class="icon-trash"></i>&nbsp;Delete</a></td>
                                </tr>
								<?php } ?>
						 
                            </tbody>
                        </table>


					
					
<script type="text/javascript">
        $(document).ready( function() {
            $('.delete_member').click( function() {
		
                var uid = $(this).attr("uid");
         
                if(confirm("Are you sure you want to delete this Member?")){
                    $.ajax({
                        type: "POST",
                        url: "delete_member.php",
                        data: ({uid: uid}),
                        cache: false,
                        success: function(html){
                            $(".del"+id).fadeOut('slow'); 
                        } 
                    }); 
                }else{
                    return false;}
            });				
        });
</script>


</div>