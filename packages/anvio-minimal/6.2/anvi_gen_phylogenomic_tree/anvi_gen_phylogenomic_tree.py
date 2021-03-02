from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Gen_Phylogenomic_Tree_V0_1_0 = CommandToolBuilder(tool="anvi_gen_phylogenomic_tree", base_command=["anvi-gen-phylogenomic-tree"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.")), ToolInput(tag="in_program", input_type=String(optional=True), prefix="--program", doc=InputDocumentation(doc="Program name.\n")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_clusters", input_type=String(), position=0, doc=InputDocumentation(doc="-f FASTA, --fasta-file FASTA\nA FASTA-formatted input file"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Gen_Phylogenomic_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

