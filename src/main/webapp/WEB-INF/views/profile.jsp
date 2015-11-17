<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link href="/pdf/resource/css/profile.css" type="text/css" rel="stylesheet" />
<div>
	<c:if test="${not empty error}">
		<div class="alert alert-danger">
			<spring:message
				code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
			<br />
		</div>
	</c:if>
	<form:errors path="*" cssClass="alert alert-danger" element="div" />
		
	<form action="../profile/portrait/${profile.id}" enctype="multipart/form-data" method="post">
		<!--<img src="${profile.portrait}" width="130" alt="profile picture"> <br />-->
		<img src="../resource/images/user.png" width="130" alt="profile picture"> <br />
		
		<input type="file" name="image">
	</form>
	<form action="../profile/${profile.id}" method="post">
		
        <fieldset>
            <legend>My Profile</legend>
            <strong>FirstName: </strong><input type="text" name="firstName" value="${profile.firstName}" size="16" />  <br />
            <strong>LastName: </strong><input type="text" name="lastName" value="${profile.lastName}" size="16" />  <br />
            <strong>Address: </strong><input type="text" name="address" value="${profile.address}" size="16" />  <br />
            <strong>Gender: </strong>
                <label><input type="radio" name="gender" value="M" 
                	<c:if test="${profile.gender != 'F'}">checked</c:if> /> Male</label>
                <label><input type="radio" name="gender" value="F" 
                	<c:if test="${profile.gender == 'F'}">checked</c:if> /> Female</label>
             <br />
             
            <strong>Birthday: </strong><input type="date" name="dateOfBirth" value="${profile.dateOfBirth}" size="8" maxlength="8"/> <br />
            <strong>Occupation:</strong>
                <select name="occupation" > 
                    <option <c:if test="${profile.occupation == 'Engineer'}">selected</c:if>>Engineer</option>
                    <option <c:if test="${profile.occupation == 'Teacher'}">selected</c:if>>Teacher</option>
                    <option <c:if test="${profile.occupation == 'Student'}">selected</c:if>>Student</option>
                    <option <c:if test="${profile.occupation == 'Doctor'}">selected</c:if>>Doctor</option>
                    <option <c:if test="${profile.occupation == 'Technician'}">selected</c:if>>Technician</option>
                    <option <c:if test="${profile.occupation == 'Architect'}">selected</c:if>>Architect</option>
                    <option <c:if test="${profile.occupation == 'Lawyer'}">selected</c:if>>Lawyer</option>
                    <option <c:if test="${profile.occupation == 'Merchant'}">selected</c:if>>Merchant</option>
                    <option <c:if test="${profile.occupation == 'Accounting'}">selected</c:if>>Accounting</option>
                </select> <br />

            
			<input type="submit" value="Submit"/>
        </fieldset>
            
    </form>
</div>



