from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Compare_Biom_Py_V0_1_0 = CommandToolBuilder(tool="compare_biom.py", base_command=["compare_biom.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_compare_observations", input_type=Boolean(optional=True), prefix="--compare_observations", doc=InputDocumentation(doc="Calculate accuracy values by comparing between\nobservations (instead of between samples) [default:\nFalse]")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Convert both expected and observed tables to relative\nabundances (instead of observations) [default: False]")), ToolInput(tag="in_limit_to_expected_observations", input_type=Boolean(optional=True), prefix="--limit_to_expected_observations", doc=InputDocumentation(doc="Ignore observations that are not in the expected\ntable[default: False]")), ToolInput(tag="in_limit_to_observed_observations", input_type=Boolean(optional=True), prefix="--limit_to_observed_observations", doc=InputDocumentation(doc="Ignore observations that are not in the observed\ntable[default: False]")), ToolInput(tag="in_shuffle_samples", input_type=Boolean(optional=True), prefix="--shuffle_samples", doc=InputDocumentation(doc="Shuffle samples ids randomly before measuring\naccuracy[default: False]")), ToolInput(tag="in_not_relative_abundance_scores", input_type=Boolean(optional=True), prefix="--not_relative_abundance_scores", doc=InputDocumentation(doc="Round numbers (instead of taking ceil() which is used\nfor RA) before calculating TP,FP,FN,TN [default:\nFalse]")), ToolInput(tag="in_exp_trait_table_fp", input_type=String(optional=True), prefix="--exp_trait_table_fp", doc=InputDocumentation(doc="the expected trait table (biom format) [REQUIRED]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output_fp", doc=InputDocumentation(doc="the output file [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="the output file [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Biom_Py_V0_1_0().translate("wdl", allow_empty_container=True)

