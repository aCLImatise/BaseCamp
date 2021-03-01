from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tracy_Assemble_V0_1_0 = CommandToolBuilder(tool="tracy_assemble", base_command=["tracy", "assemble"], inputs=[ToolInput(tag="in_arg_referenceguided_optional", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg              reference-guided assembly (optional)")), ToolInput(tag="in_arg_peak_ratio", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --pratio ] arg (=0.330000013)  peak ratio to call base")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --trim ] arg (=4)              trimming stringency [1:9]")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --fracmatch ] arg (=0.5)       min. fraction of matches [0:1]")), ToolInput(tag="in_arg_gap_open", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --gapopen ] arg (=-10)         gap open")), ToolInput(tag="in_arg_gap_extension", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ --gapext ] arg (=-4)           gap extension")), ToolInput(tag="in__arg_match", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --match ] arg (=3)             match")), ToolInput(tag="in__arg_mismatch", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --mismatch ] arg (=-5)         mismatch")), ToolInput(tag="in_arg_fraction_traces", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --called ] arg (=0.100000001)  fraction of traces required for consensus")), ToolInput(tag="in_arg_output_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outprefix ] arg (=out)       output prefix")), ToolInput(tag="in_include_consensus_fasta", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --inccons ]                    include consensus in FASTA align")), ToolInput(tag="in_generic", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracy_Assemble_V0_1_0().translate("wdl", allow_empty_container=True)

