from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Rsem_Eval_Run_Em_V0_1_0 = CommandToolBuilder(tool="rsem_eval_run_em", base_command=["rsem-eval-run-em"], inputs=[ToolInput(tag="in_number_threads_wants", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": number of threads which user wants to use. (default: 1)")), ToolInput(tag="in_produce_file_default", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc=": produce bam format output file. (default: off)")), ToolInput(tag="in_set_it_quiet", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": set it quiet")), ToolInput(tag="in_sampling", input_type=Boolean(optional=True), prefix="--sampling", doc=InputDocumentation(doc=": sample each read from its posterior distribution when bam file is generated. (default: off)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": the seed used for the BAM sampling. (default: off)"))], outputs=[ToolOutput(tag="out_produce_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_produce_file_default", type_hint=File()), doc=OutputDocumentation(doc=": produce bam format output file. (default: off)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Eval_Run_Em_V0_1_0().translate("wdl", allow_empty_container=True)

