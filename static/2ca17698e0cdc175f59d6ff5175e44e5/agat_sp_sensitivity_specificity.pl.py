from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Agat_Sp_Sensitivity_Specificity_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_sensitivity_specificity.pl", base_command=["agat_sp_sensitivity_specificity.pl"], inputs=[ToolInput(tag="in_gff_one", input_type=Boolean(optional=True), prefix="-gff1", doc=InputDocumentation(doc="Input GTF/GFF file 1.")), ToolInput(tag="in_gff_two", input_type=Boolean(optional=True), prefix="-gff2", doc=InputDocumentation(doc="Input GTF/GFF file 2.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_verbose_option_debug", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option for debug purposes.")), ToolInput(tag="in_agat_sp_sensitivity_specificity_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_tn", input_type=String(), position=0, doc=InputDocumentation(doc="Sensitivity and Specificity will be computed for each feature types."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Sensitivity_Specificity_Pl_V0_1_0().translate("wdl")

