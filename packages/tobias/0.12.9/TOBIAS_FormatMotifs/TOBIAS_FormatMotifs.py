from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Tobias_Formatmotifs_V0_1_0 = CommandToolBuilder(tool="TOBIAS_FormatMotifs", base_command=["TOBIAS", "FormatMotifs"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[ [ ...]]  One or more input motif files (required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="If task == join, output is the joined output file; if task == split,\noutput is a directory (required)")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Desired motif output format (pfm, jaspar, meme) (default: 'jaspar')")), ToolInput(tag="in_task", input_type=Boolean(optional=True), prefix="--task", doc=InputDocumentation(doc="Which task to perform on motif files (join/split) (default: join)")), ToolInput(tag="in_filter", input_type=File(optional=True), prefix="--filter", doc=InputDocumentation(doc="File containing list of motif names/ids to filter on. Only motifs\nfitting entries in filter will be output.")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="If task == join, output is the joined output file; if task == split,\noutput is a directory (required)")), ToolOutput(tag="out_filter", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filter", type_hint=File()), doc=OutputDocumentation(doc="File containing list of motif names/ids to filter on. Only motifs\nfitting entries in filter will be output."))], container="quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Formatmotifs_V0_1_0().translate("wdl")

