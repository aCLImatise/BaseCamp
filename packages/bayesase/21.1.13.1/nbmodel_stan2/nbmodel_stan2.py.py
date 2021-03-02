from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Nbmodel_Stan2_Py_V0_1_0 = CommandToolBuilder(tool="nbmodel_stan2.py", base_command=["nbmodel_stan2.py"], inputs=[ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="TSV design file with sampleID names to analyze")), ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="TSV input file with merged comparates and new headers")), ToolInput(tag="in_cond", input_type=Int(optional=True), prefix="--cond", doc=InputDocumentation(doc="Number of conditions")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="Optional number of iterations (default: 100000)")), ToolInput(tag="in_warm_up", input_type=Int(optional=True), prefix="--warmup", doc=InputDocumentation(doc="Optional number of warmups (default: 10000)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file name/path. Default -\nbayesian_output_$name.tabular")), ToolInput(tag="in_r_script", input_type=File(optional=True), prefix="--rscript", doc=InputDocumentation(doc="Full path to R script if not using package version")), ToolInput(tag="in_stan_model", input_type=File(optional=True), prefix="--stanmodel", doc=InputDocumentation(doc="Full path to stan model if not using package version\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file name/path. Default -\nbayesian_output_$name.tabular"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nbmodel_Stan2_Py_V0_1_0().translate("wdl")

