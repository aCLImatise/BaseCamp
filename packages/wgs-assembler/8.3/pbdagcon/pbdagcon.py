from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pbdagcon_V0_1_0 = CommandToolBuilder(tool="pbdagcon", base_command=["pbdagcon"], inputs=[ToolInput(tag="in_increase_logging_verbosity", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]               Increase logging verbosity")), ToolInput(tag="in_align_sequences_adding", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --align ]                 Align sequences before adding to consensus")), ToolInput(tag="in_arg_trim_alignment", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --trim ] arg (=50)        Trim alignment by N bases on either side")), ToolInput(tag="in_arg_filter_alignments", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --min-length ] arg (=500) Filter both alignments and corrected reads\nless than length")), ToolInput(tag="in_arg_minimum_coverage", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --min-coverage ] arg (=8) Minimum coverage required to correct")), ToolInput(tag="in_arg_number_use", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --threads ] arg           Number of consensus threads to use")), ToolInput(tag="in_arg_size_read", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --rbuf ] arg (=30)        Size of the read buffer")), ToolInput(tag="in_arg_size_write", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="[ --wbuf ] arg (=30)        Size of the write buffer")), ToolInput(tag="in_input_flag_optional", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="(=-)               Input (flag is optional)")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbdagcon_V0_1_0().translate("wdl", allow_empty_container=True)

