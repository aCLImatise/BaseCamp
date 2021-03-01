from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Edcalculator_Smp_V0_1_0 = CommandToolBuilder(tool="EDcalculator_smp", base_command=["EDcalculator-smp"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc="Specify that the sequence is DNA, and DNA parameters are to be used. The\ndefault is to use RNA parameters.")), ToolInput(tag="in_raw", input_type=Boolean(optional=True), prefix="--raw", doc=InputDocumentation(doc="Output just the *Normalized* ensemble defect as a pure number (with no\nadditional description).")), ToolInput(tag="in_alphabet", input_type=Boolean(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="Specify the name of a folding alphabet and associated nearest neighbor\nparameters. The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. 'rna' for RNA parameters or 'dna' for DNA parameters or a\ncustom extended/modified alphabet. The thermodynamic parameters need to\nreside in the at the location indicated by environment variable DATAPATH.\nThe default is 'rna' (i.e. use RNA parameters). This option overrides the\n--DNA flag.")), ToolInput(tag="in_constraint", input_type=Boolean(optional=True), prefix="--constraint", doc=InputDocumentation(doc="Specify a constraints file to be applied.\nDefault is to have no constraints applied.")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Output the results to the specified file instead of to the screen\n(stdout).")), ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="--number", doc=InputDocumentation(doc="Specify the index of a particular structure for which to calculate the\ndefect. The default is -1, which means to calculate the defect for all\nstructures.\n")), ToolInput(tag="in_ed_calculator", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ct_structure_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file", type_hint=File()), doc=OutputDocumentation(doc="Output the results to the specified file instead of to the screen\n(stdout)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edcalculator_Smp_V0_1_0().translate("wdl", allow_empty_container=True)

