from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cactus_Getreferenceseq_V0_1_0 = CommandToolBuilder(tool="cactus_getReferenceSeq", base_command=["cactus_getReferenceSeq"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc=": name of the reference sequence's event")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc=": Name of output fasta file"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=": Name of output fasta file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Getreferenceseq_V0_1_0().translate("wdl", allow_empty_container=True)

