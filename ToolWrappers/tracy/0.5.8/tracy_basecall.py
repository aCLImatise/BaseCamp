from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Tracy_Basecall_V0_1_0 = CommandToolBuilder(tool="tracy_basecall", base_command=["tracy", "basecall"], inputs=[ToolInput(tag="in_arg_peak_ratio", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --pratio ] arg (=0.330000013)  peak ratio to call a base")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]")), ToolInput(tag="in_arg_basecalling_output", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg (='out.json')   basecalling output")), ToolInput(tag="in_trace_do_tab_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tracy:0.5.8--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracy_Basecall_V0_1_0().translate("wdl")

