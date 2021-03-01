from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Secapr_Automate_All_V0_1_0 = CommandToolBuilder(tool="secapr_automate_all", base_command=["secapr", "automate_all"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The directory containing cleaned fastq files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory where all intermediate and final\ndata files will be stored")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Provide a reference library (FASTA) containing\nsequences for the genes of interest (required to find\ncontigs matching targeted regions).")), ToolInput(tag="in_setting", input_type=String(optional=True), prefix="--setting", doc=InputDocumentation(doc="The setting you want to run SECAPR on. 'relaxed' uses\nvery non-restrictive default values (use when samples\nare expected to differ considerably from provided\nreference or are covering wide evolutionary range,\ne.g. different families or orders). 'conservative' is\nvery restrictive and can be used when samples are\nclosely related and match provided reference very\nwell.")), ToolInput(tag="in_assembler", input_type=String(optional=True), prefix="--assembler", doc=InputDocumentation(doc="The assembler to use for de-novo assembly\n(default=abyss).")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of computational cores for parallelization of\ncomputation.\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory where all intermediate and final\ndata files will be stored"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Automate_All_V0_1_0().translate("wdl", allow_empty_container=True)

