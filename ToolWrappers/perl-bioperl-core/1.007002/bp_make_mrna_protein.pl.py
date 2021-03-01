from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bp_Make_Mrna_Protein_Pl_V0_1_0 = CommandToolBuilder(tool="bp_make_mrna_protein.pl", base_command=["bp_make_mrna_protein.pl"], inputs=[ToolInput(tag="in_frame", input_type=Boolean(optional=True), prefix="--frame", doc=InputDocumentation(doc="Translation Frame (0,1,2) are valid (defaults to '0')")), ToolInput(tag="in_terminator", input_type=Boolean(optional=True), prefix="--terminator", doc=InputDocumentation(doc="Stop Codon Character ('*' by default)")), ToolInput(tag="in_unknown", input_type=Boolean(optional=True), prefix="--unknown", doc=InputDocumentation(doc="Unknown Protein character (defaults to 'X')")), ToolInput(tag="in_codon_table", input_type=Boolean(optional=True), prefix="--codontable", doc=InputDocumentation(doc="Codon table to use (defaults to '1')\n(see Bio::PrimarySeq for more information)")), ToolInput(tag="in_full_cds", input_type=Boolean(optional=True), prefix="--fullcds", doc=InputDocumentation(doc="Expected Full CDS (with start and Stop codon)")), ToolInput(tag="in_throw_on_error", input_type=Boolean(optional=True), prefix="-throwOnError", doc=InputDocumentation(doc="Throw an error if no Full CDS (defaults to 0)")), ToolInput(tag="in_i_format", input_type=Boolean(optional=True), prefix="--iformat", doc=InputDocumentation(doc="Input format (defaults to FASTA/Pearson)")), ToolInput(tag="in_o_format", input_type=Boolean(optional=True), prefix="--oformat", doc=InputDocumentation(doc="Output format (defaults to FASTA/Pearson)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output Filename (defaults to STDOUT)")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Input Filename (defaults to STDIN)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output Filename (defaults to STDOUT)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Make_Mrna_Protein_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

