from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Ancestral_State_Reconstruction_Py_V0_1_0 = CommandToolBuilder(tool="ancestral_state_reconstruction.py", base_command=["ancestral_state_reconstruction.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_asr_method", input_type=String(optional=True), prefix="--asr_method", doc=InputDocumentation(doc="Method for ancestral state reconstruction. Valid\nchoices are: ace_ml, ace_reml, ace_pic, wagner\n[default: ace_pic]")), ToolInput(tag="in_output_fp", input_type=String(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="output trait table [default:asr_counts.tab]")), ToolInput(tag="in_output_ci_fp", input_type=Int(optional=True), prefix="--output_ci_fp", doc=InputDocumentation(doc="output table containing 95% confidence intervals,\nloglik, and brownian motion parameters for each asr\nprediction [default:asr_ci.tab]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="allow parallelization of asr")), ToolInput(tag="in_parallel_method", input_type=String(optional=True), prefix="--parallel_method", doc=InputDocumentation(doc="Method for parallelization. Valid choices are: sge,\ntorque, multithreaded [default: sge]")), ToolInput(tag="in_num_jobs", input_type=Int(optional=True), prefix="--num_jobs", doc=InputDocumentation(doc="Number of jobs to be submitted (if --parallel).\n[default: 100]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="To aid with debugging; get the command that the app\ncontroller is going to run")), ToolInput(tag="in_input_tree_fp", input_type=String(optional=True), prefix="--input_tree_fp", doc=InputDocumentation(doc="the tree to use for ASR [REQUIRED]")), ToolInput(tag="in_input_trait_table_fp", input_type=String(optional=True), prefix="--input_trait_table_fp", doc=InputDocumentation(doc="the trait table to use for ASR [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ancestral_State_Reconstruction_Py_V0_1_0().translate("wdl", allow_empty_container=True)

