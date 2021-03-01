from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Lorma_V0_1_0 = CommandToolBuilder(tool="LoRMA", base_command=["LoRMA"], inputs=[ToolInput(tag="in_best_friends", input_type=Boolean(optional=True), prefix="-bestfriends", doc=InputDocumentation(doc="(1 arg) :    Number of best friends  [default '3']")), ToolInput(tag="in_friends", input_type=Boolean(optional=True), prefix="-friends", doc=InputDocumentation(doc="(1 arg) :    Number of friends  [default '7']")), ToolInput(tag="in_arg_kmer_length", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="(1 arg) :    kmer length  [default '31']")), ToolInput(tag="in_discarded", input_type=File(optional=True), prefix="-discarded", doc=InputDocumentation(doc="(1 arg) :    output file for discarded reads")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="(1 arg) :    output file for corrected reads")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="-reads", doc=InputDocumentation(doc="(1 arg) :    file(s) of long reads")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '1']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']"))], outputs=[ToolOutput(tag="out_discarded", output_type=File(optional=True), selector=InputSelector(input_to_select="in_discarded", type_hint=File()), doc=OutputDocumentation(doc="(1 arg) :    output file for discarded reads")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="(1 arg) :    output file for corrected reads"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorma_V0_1_0().translate("wdl", allow_empty_container=True)

