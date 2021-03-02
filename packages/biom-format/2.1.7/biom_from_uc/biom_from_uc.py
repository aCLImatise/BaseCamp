from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Biom_From_Uc_V0_1_0 = CommandToolBuilder(tool="biom_from_uc", base_command=["biom", "from-uc"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input uc filepath.  [required]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="The output BIOM filepath  [required]")), ToolInput(tag="in_rep_set_fp", input_type=File(optional=True), prefix="--rep-set-fp", doc=InputDocumentation(doc="Fasta file containing representative sequences with\nwhere sequences are labeled with OTU identifiers, and\ndescription fields contain original sequence\nidentifiers. This output is created, for example, by\nvsearch with the --relabel_sha1 --relabel_keep\noptions."))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="The output BIOM filepath  [required]")), ToolOutput(tag="out_rep_set_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_rep_set_fp", type_hint=File()), doc=OutputDocumentation(doc="Fasta file containing representative sequences with\nwhere sequences are labeled with OTU identifiers, and\ndescription fields contain original sequence\nidentifiers. This output is created, for example, by\nvsearch with the --relabel_sha1 --relabel_keep\noptions."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_From_Uc_V0_1_0().translate("wdl", allow_empty_container=True)

