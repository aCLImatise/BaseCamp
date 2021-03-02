from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Hiccompartmentalization_V0_1_0 = CommandToolBuilder(tool="hicCompartmentalization", base_command=["hicCompartmentalization"], inputs=[ToolInput(tag="in_obs_exp_matrices", input_type=Array(t=String(), optional=True), prefix="--obsexp_matrices", doc=InputDocumentation(doc="HiCExplorer matrices in h5/cool format.")), ToolInput(tag="in_pc_a", input_type=File(optional=True), prefix="--pca", doc=InputDocumentation(doc="a PCA vector as a bedgraph file with no header. In\ncase of several matrices with different conditions,\nie. controltreatment, the PCA of control can be used.\nNote that only one PCA can be provided.")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="--outputFileName", doc=InputDocumentation(doc="Plot to represent the polarization of A/B\ncompartments.")), ToolInput(tag="in_quantile", input_type=Int(optional=True), prefix="--quantile", doc=InputDocumentation(doc="number of quantiles. (Default: 30).")), ToolInput(tag="in_outliers", input_type=Int(optional=True), prefix="--outliers", doc=InputDocumentation(doc="precentage of outlier to remove. (Default: 0).")), ToolInput(tag="in_output_matrix", input_type=File(optional=True), prefix="--outputMatrix", doc=InputDocumentation(doc="output .npz file includes all the generated matrices")), ToolInput(tag="in_offset", input_type=Array(t=String(), optional=True), prefix="--offset", doc=InputDocumentation(doc="set nan for the distances mentioned as offset from\nmain diagonal, only positive values are accepted!\nExample: if --offset 0, then values of main diagonal\nwill set to nan and if --offset 0 1 then on top of the\nmain diagonal, +1 and -1 diagonal values are also set\nto nan."))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Plot to represent the polarization of A/B\ncompartments.")), ToolOutput(tag="out_output_matrix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_matrix", type_hint=File()), doc=OutputDocumentation(doc="output .npz file includes all the generated matrices"))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiccompartmentalization_V0_1_0().translate("wdl")

