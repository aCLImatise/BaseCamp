from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Soapdenovo_Trans_31Mer_Scaff_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_Trans_31mer_scaff", base_command=["SOAPdenovo-Trans-31mer", "scaff"], inputs=[ToolInput(tag="in_string_inputgraph_prefix", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<string>        inputGraph: prefix of input graph file name")), ToolInput(tag="in_optional_output_assembly", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="(optional) output assembly RPKM statistics, [NO]")), ToolInput(tag="in_optional_scaffold_structure", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="(optional)      scaffold structure exists, [NO]")), ToolInput(tag="in_optional_fill_gaps", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="(optional)      fill gaps in scaffolds, [NO]")), ToolInput(tag="in_int_ncpu_number", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>           n_cpu: number of cpu for use, [8]")), ToolInput(tag="in_int_mincontiglen_shortest", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="<int>           minContigLen: shortest contig for scaffolding, [100]")), ToolInput(tag="in_int_locusmaxoutput_output", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<int>           locusMaxOutput: output the number of transcripts no more than locusMaxOutput in one locus, [5]")), ToolInput(tag="in_int_gaplendiff_allowed", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="<int>           gapLenDiff: allowed length difference between estimated and filled gap, [50]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_Trans_31Mer_Scaff_V0_1_0().translate("wdl", allow_empty_container=True)

