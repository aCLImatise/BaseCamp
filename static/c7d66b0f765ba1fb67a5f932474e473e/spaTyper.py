from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Array, String, Boolean

Spatyper_V0_1_0 = CommandToolBuilder(tool="spaTyper", base_command=["spaTyper"], inputs=[ToolInput(tag="in_repeat_file", input_type=File(optional=True), prefix="--repeat_file", doc=InputDocumentation(doc="List of spa repeats\n(http://spa.ridom.de/dynamic/sparepeats.fasta)")), ToolInput(tag="in_repeat_order_file", input_type=File(optional=True), prefix="--repeat_order_file", doc=InputDocumentation(doc="List spa types and order of repeats\n(http://spa.ridom.de/dynamic/spatypes.txt)")), ToolInput(tag="in_folder", input_type=Directory(optional=True), prefix="--folder", doc=InputDocumentation(doc="Folder to save downloaded files from Ridom/Spa server")), ToolInput(tag="in_fast_a", input_type=Array(t=String(), optional=True), prefix="--fasta", doc=InputDocumentation(doc="List of one or more fasta files.")), ToolInput(tag="in_glob", input_type=String(optional=True), prefix="--glob", doc=InputDocumentation(doc="Uses unix style pathname expansion to run spa typing\non all files. If your shell autoexpands wildcards use\n-f.")), ToolInput(tag="in_do_enrich", input_type=Boolean(optional=True), prefix="--do_enrich", doc=InputDocumentation(doc="Do PCR product enrichment. [Default: False]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Provide a name for the output file. Default: Standard")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Developer messages")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Prints additional information")), ToolInput(tag="in_out", input_type=String(), position=0, doc=InputDocumentation(doc="--version             show program's version number and exit"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Provide a name for the output file. Default: Standard"))], container="quay.io/biocontainers/spatyper:0.3.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spatyper_V0_1_0().translate("wdl")

