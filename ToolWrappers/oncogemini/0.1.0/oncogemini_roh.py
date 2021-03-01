from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Oncogemini_Roh_V0_1_0 = CommandToolBuilder(tool="oncogemini_roh", base_command=["oncogemini", "roh"], inputs=[ToolInput(tag="in_min_snps", input_type=Int(optional=True), prefix="--min-snps", doc=InputDocumentation(doc="Minimum number of homozygous snps expected in a run\n(def. 25)")), ToolInput(tag="in_min_total_depth", input_type=Int(optional=True), prefix="--min-total-depth", doc=InputDocumentation(doc="The minimum overall sequencing depth requiredfor a SNP\nto be considered (def = 20).")), ToolInput(tag="in_min_gt_depth", input_type=Int(optional=True), prefix="--min-gt-depth", doc=InputDocumentation(doc="The minimum required sequencing depth underlying a\ngiven sample's genotypefor a SNP to be considered (def\n= 0).")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="Minimum run size in base pairs (def. 100000)")), ToolInput(tag="in_max_he_ts", input_type=Int(optional=True), prefix="--max-hets", doc=InputDocumentation(doc="Maximum number of allowed hets in the run (def. 1)")), ToolInput(tag="in_max_unknowns", input_type=Int(optional=True), prefix="--max-unknowns", doc=InputDocumentation(doc="Maximum number of allowed unknowns in the run (def. 3)")), ToolInput(tag="in_comma_separated_list", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Comma separated list of samples to screen for ROHs.\ne.g S120,S450\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Roh_V0_1_0().translate("wdl", allow_empty_container=True)

