from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Peakranger_Wigpe_V0_1_0 = CommandToolBuilder(tool="peakranger_wigpe", base_command=["peakranger", "wigpe"], inputs=[ToolInput(tag="in_arg_data_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --data ] arg             the data file")), ToolInput(tag="in_arg_output_location", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg           the output location")), ToolInput(tag="in_generate_one_wig_file_chromosome", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --split ]                generate one wig file per chromosome")), ToolInput(tag="in__compress_output", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="[ --gzip ]                 compress the output")), ToolInput(tag="in_generate_one_wig_file_strand", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="[ --strand ]               generate one wig file per strand")), ToolInput(tag="in_arg_read_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --ext_length ] arg (=0)  read extension length")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show progress when possible")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakranger_Wigpe_V0_1_0().translate("wdl", allow_empty_container=True)

