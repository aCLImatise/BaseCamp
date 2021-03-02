from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Oncogemini_Set_Somatic_V0_1_0 = CommandToolBuilder(tool="oncogemini_set_somatic", base_command=["oncogemini", "set_somatic"], inputs=[ToolInput(tag="in_mind_p", input_type=Int(optional=True), prefix="--minDP", doc=InputDocumentation(doc="Minimum depth required in all samples (default is 0)")), ToolInput(tag="in_ming_q", input_type=Int(optional=True), prefix="--minGQ", doc=InputDocumentation(doc="Minimum genotype quality required in all samples\n(default is 0)")), ToolInput(tag="in_norma_f", input_type=Int(optional=True), prefix="--normAF", doc=InputDocumentation(doc="The max freq. of the alt. allele in the normal sample\n(def: 0).")), ToolInput(tag="in_norm_count", input_type=Int(optional=True), prefix="--normCount", doc=InputDocumentation(doc="The max count. of the alt. allele in the normal sample\n(def: 0).")), ToolInput(tag="in_norm_dp", input_type=Int(optional=True), prefix="--normDP", doc=InputDocumentation(doc="The minimum depth allowed in the normal sample to\nbelieve somatic (def: 0).")), ToolInput(tag="in_tuma_f", input_type=Int(optional=True), prefix="--tumAF", doc=InputDocumentation(doc="The min freq. of the alt. allele in the tumor sample\n(def: 0).")), ToolInput(tag="in_tum_count", input_type=Int(optional=True), prefix="--tumCount", doc=InputDocumentation(doc="The min count. of the alt. allele in the tumor sample\n(def: 0).")), ToolInput(tag="in_tu_mdp", input_type=Int(optional=True), prefix="--tumDP", doc=InputDocumentation(doc="The minimum depth allowed in the tumor sample to\nbelieve somatic (def: 0).")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Don't set the is_somatic flag, just report what\n_would_ be set. For testing parameters.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Set_Somatic_V0_1_0().translate("wdl", allow_empty_container=True)

