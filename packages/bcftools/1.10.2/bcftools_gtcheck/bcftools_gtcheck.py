from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Bcftools_Gtcheck_V0_1_0 = CommandToolBuilder(tool="bcftools_gtcheck", base_command=["bcftools", "gtcheck"], inputs=[ToolInput(tag="in_all_sites", input_type=Boolean(optional=True), prefix="--all-sites", doc=InputDocumentation(doc="output comparison for all sites")), ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="--cluster", doc=InputDocumentation(doc="<min,max>         min inter- and max intra-sample error [0.23,-0.3]")), ToolInput(tag="in_genotypes", input_type=File(optional=True), prefix="--genotypes", doc=InputDocumentation(doc="genotypes to compare against")), ToolInput(tag="in_gts_only", input_type=Int(optional=True), prefix="--GTs-only", doc=InputDocumentation(doc="use GTs, ignore PLs, using <int> for unseen genotypes [99]")), ToolInput(tag="in_homs_only", input_type=Boolean(optional=True), prefix="--homs-only", doc=InputDocumentation(doc="homozygous genotypes only (useful for low coverage data)")), ToolInput(tag="in_plot", input_type=String(optional=True), prefix="--plot", doc=InputDocumentation(doc="plot")), ToolInput(tag="in_regions", input_type=String(optional=True), prefix="--regions", doc=InputDocumentation(doc="restrict to comma-separated list of regions")), ToolInput(tag="in_regions_file", input_type=File(optional=True), prefix="--regions-file", doc=InputDocumentation(doc="restrict to regions listed in a file")), ToolInput(tag="in_query_sample", input_type=String(optional=True), prefix="--query-sample", doc=InputDocumentation(doc="query sample (by default the first sample is checked)")), ToolInput(tag="in_target_sample", input_type=File(optional=True), prefix="--target-sample", doc=InputDocumentation(doc="target sample in the -g file (used only for plotting)")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="similar to -r but streams rather than index-jumps")), ToolInput(tag="in_targets_file", input_type=File(optional=True), prefix="--targets-file", doc=InputDocumentation(doc="similar to -R but streams rather than index-jumps")), ToolInput(tag="in_query_dot_vcf_do_tgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcftools_Gtcheck_V0_1_0().translate("wdl", allow_empty_container=True)

