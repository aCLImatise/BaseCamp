from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, Float, String

Sequana_Vcf_Filter_V0_1_0 = CommandToolBuilder(tool="sequana_vcf_filter", base_command=["sequana_vcf_filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input fastq gzipped or not (default: None)")), ToolInput(tag="in_quality", input_type=Int(optional=True), prefix="--quality", doc=InputDocumentation(doc="filter sites below this quality (default: -1)")), ToolInput(tag="in_apply_in_del_filter", input_type=Boolean(optional=True), prefix="--apply-indel-filter", doc=InputDocumentation(doc="remove INDELs (default: False)")), ToolInput(tag="in_apply_dp_four_filter", input_type=Boolean(optional=True), prefix="--apply-dp4-filter", doc=InputDocumentation(doc="apply DP4 filters. see online doc, vcf_filter section\n(default: False)")), ToolInput(tag="in_apply_af_one_filter", input_type=Boolean(optional=True), prefix="--apply-af1-filter", doc=InputDocumentation(doc="apply AF1 filters. see online doc, vcf_filter section\n(default: False)")), ToolInput(tag="in_minimum_af_one", input_type=Int(optional=True), prefix="--minimum-af1", doc=InputDocumentation(doc="default to 0.95 (default: 0.95)")), ToolInput(tag="in_minimum_ratio", input_type=Float(optional=True), prefix="--minimum-ratio", doc=InputDocumentation(doc="default to 0.75 (default: 0.75)")), ToolInput(tag="in_minimum_depth", input_type=Int(optional=True), prefix="--minimum-depth", doc=InputDocumentation(doc="default to 4 (default: 4)")), ToolInput(tag="in_minimum_depth_strand", input_type=Int(optional=True), prefix="--minimum_depth-strand", doc=InputDocumentation(doc="default to 2 (default: 2)")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="Provide as many filters as you want. See example above\n(default: [])")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="DP>30&<60  # to keep only values in the range [30-60]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Vcf_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

