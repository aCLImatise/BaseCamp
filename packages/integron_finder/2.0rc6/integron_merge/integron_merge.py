from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Float

Integron_Merge_V0_1_0 = CommandToolBuilder(tool="integron_merge", base_command=["integron_merge"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity of output (can be cumulative : -vv)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Decrease verbosity of output (can be cumulative : -qq)")), ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc="path of directory where the merged result must be stored")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc="the basename of the result files ('.integrons' and\n'.summary') without extension, eg : data_set_1")), ToolInput(tag="in_results", input_type=String(), position=2, doc=InputDocumentation(doc="Path to the results dir to merge eg : path/to/")), ToolInput(tag="in_results_integr_on_finder_acba_dot_zero_zero_seven_dot_pzero_one_dot_one_three", input_type=Float(), position=3, doc=InputDocumentation(doc="path/to/Results_Integron_Finder_lian.001.c02.10"))], outputs=[], container="quay.io/biocontainers/integron_finder:2.0rc6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Integron_Merge_V0_1_0().translate("wdl")

