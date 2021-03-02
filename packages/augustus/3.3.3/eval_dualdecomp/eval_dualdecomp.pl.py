from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory

Eval_Dualdecomp_Pl_V0_1_0 = CommandToolBuilder(tool="eval_dualdecomp.pl", base_command=["eval_dualdecomp.pl"], inputs=[ToolInput(tag="in_intput_augustus_file", input_type=File(optional=True), prefix="--f", doc=InputDocumentation(doc="intput AUGUSTUS file")), ToolInput(tag="in_directory_input_augustus", input_type=File(optional=True), prefix="--d", doc=InputDocumentation(doc="directory of input AUGUSTUS files (recognized by .out file extension)")), ToolInput(tag="in_hist_iterations", input_type=String(optional=True), prefix="--hist_iterations", doc=InputDocumentation(doc="output histogram of iterations to out.pdf")), ToolInput(tag="in_hist_errors", input_type=String(optional=True), prefix="--hist_errors", doc=InputDocumentation(doc="output histogram of error estimates to out.pdf for all cases, where\nno convergence is achieved.")), ToolInput(tag="in_err_per_iter", input_type=Int(optional=True), prefix="--err_per_iter", doc=InputDocumentation(doc="plots the average percentage of initial error against the iterations to out.pdf.\nIf after a certain number of iterations the error no further drops,\nearly stopping is recommended, i.e. in the next run, the number of\nDD iterations can be restricted to this number of iterations.")), ToolInput(tag="in_threshold_evolution_helps", input_type=Int(optional=True), prefix="--t", doc=InputDocumentation(doc="threshold for percentage of initial error. For all cases with an estimated\nerror higher than this threshold, the evolution of primal an dual values\nare plotted against the iterations. This helps debugging cases with a\nhigh error estimate. The threshold is between [0-100] (default: 5)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="put all plots in this output directory"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="put all plots in this output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eval_Dualdecomp_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

