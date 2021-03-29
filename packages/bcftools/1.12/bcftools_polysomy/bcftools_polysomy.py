from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Boolean

Bcftools_Polysomy_V0_1_0 = CommandToolBuilder(tool="bcftools_polysomy", base_command=["bcftools", "polysomy"], inputs=[ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="restrict to comma-separated list of regions")), ToolInput(tag="in_regions_file", input_type=File(optional=True), prefix="--regions-file", doc=InputDocumentation(doc="restrict to regions listed in a file")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="sample to analyze")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="similar to -r but streams rather than index-jumps")), ToolInput(tag="in_targets_file", input_type=File(optional=True), prefix="--targets-file", doc=InputDocumentation(doc="similar to -R but streams rather than index-jumps")), ToolInput(tag="in_peak_size", input_type=Float(optional=True), prefix="--peak-size", doc=InputDocumentation(doc="minimum peak size (0-1, larger is stricter) [0.1]")), ToolInput(tag="in_cn_penalty", input_type=Float(optional=True), prefix="--cn-penalty", doc=InputDocumentation(doc="penalty for increasing CN (0-1, larger is stricter) [0.7]")), ToolInput(tag="in_fit_th", input_type=Float(optional=True), prefix="--fit-th", doc=InputDocumentation(doc="goodness of fit threshold (>0, smaller is stricter) [3.3]")), ToolInput(tag="in_include_aa", input_type=Boolean(optional=True), prefix="--include-aa", doc=InputDocumentation(doc="include the AA peak in CN2 and CN3 evaluation")), ToolInput(tag="in_min_fraction", input_type=Float(optional=True), prefix="--min-fraction", doc=InputDocumentation(doc="minimum distinguishable fraction of aberrant cells [0.1]")), ToolInput(tag="in_peak_symmetry", input_type=Float(optional=True), prefix="--peak-symmetry", doc=InputDocumentation(doc="peak symmetry threshold (0-1, larger is stricter) [0.5]")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcftools_Polysomy_V0_1_0().translate("wdl")

