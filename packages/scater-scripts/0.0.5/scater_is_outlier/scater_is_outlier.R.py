from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Scater_Is_Outlier_R_V0_1_0 = CommandToolBuilder(tool="scater_is_outlier.R", base_command=["scater-is-outlier.R"], inputs=[ToolInput(tag="in_metric_file", input_type=File(optional=True), prefix="--metric-file", doc=InputDocumentation(doc="Two column table with cell names on the first column and numeric QC metric on the second column.")), ToolInput(tag="in_nm_ads", input_type=Int(optional=True), prefix="--nmads", doc=InputDocumentation(doc="scalar, number of median-absolute-deviations away from median required for a value to be called an outlier.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="character scalar, choice indicate whether outliers should be looked for at both tails (default: 'both') or only at the lower end ('lower') or the higher end ('higher').")), ToolInput(tag="in_log", input_type=Int(optional=True), prefix="--log", doc=InputDocumentation(doc="logical, should the values of the metric be transformed to the log10 scale before computing median-absolute-deviation for outlier detection?")), ToolInput(tag="in_min_diff", input_type=Int(optional=True), prefix="--min-diff", doc=InputDocumentation(doc="numeric scalar indicating the minimum difference from the median to consider as an outlier. The outlier threshold is defined from the larger of nmads MADs and min.diff, to avoid calling many outliers when the MAD is very small. If NA, it is ignored.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File name in which to store the output vector of outliers (one value per line)"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store the output vector of outliers (one value per line)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scater_Is_Outlier_R_V0_1_0().translate("wdl", allow_empty_container=True)

