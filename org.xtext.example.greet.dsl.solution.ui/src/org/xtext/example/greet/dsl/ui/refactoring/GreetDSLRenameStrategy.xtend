package org.xtext.example.greet.dsl.ui.refactoring

import org.eclipse.ltk.core.refactoring.RefactoringStatus
import org.eclipse.xtext.ui.refactoring.impl.DefaultRenameStrategy

class GreetDSLRenameStrategy extends DefaultRenameStrategy {
	override RefactoringStatus validateNewName(String newName) {
		val status = super.validateNewName(newName);
		if ("Foo".equals(newName)) {
			status.addFatalError("Illegal name: " + newName);
		}
		return status;
	}
}