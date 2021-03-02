from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

O_Keep_Or_Remove_Samples_From_Fasta_V0_1_0 = CommandToolBuilder(tool="o_keep_or_remove_samples_from_fasta", base_command=["o-keep-or-remove-samples-from-fasta"], inputs=[ToolInput(tag="in_retain", input_type=Boolean(optional=True), prefix="--retain", doc=InputDocumentation(doc="If declared, resulting FASTA file would contain\nsamples that 'match' sample names listed in the\n'samples' file. The default behavior is the vice\nversa.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n")), ToolInput(tag="in_fast_a_file_path", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file to remove or retain samples from")), ToolInput(tag="in_samples_file_path", input_type=String(), position=1, doc=InputDocumentation(doc="File that contains a sample name for each line"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Keep_Or_Remove_Samples_From_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

