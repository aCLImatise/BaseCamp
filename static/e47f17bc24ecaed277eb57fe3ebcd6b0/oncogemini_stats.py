from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Oncogemini_Stats_V0_1_0 = CommandToolBuilder(tool="oncogemini_stats", base_command=["oncogemini", "stats"], inputs=[ToolInput(tag="in_ts_tv", input_type=Boolean(optional=True), prefix="--tstv", doc=InputDocumentation(doc="Report the overall ts/tv ratio.")), ToolInput(tag="in_ts_tv_coding", input_type=Boolean(optional=True), prefix="--tstv-coding", doc=InputDocumentation(doc="Report the ts/tv ratio in coding regions.")), ToolInput(tag="in_ts_tv_noncoding", input_type=Boolean(optional=True), prefix="--tstv-noncoding", doc=InputDocumentation(doc="Report the ts/tv ratio in non-coding regions.")), ToolInput(tag="in_snp_counts", input_type=Boolean(optional=True), prefix="--snp-counts", doc=InputDocumentation(doc="Report the count of each type of SNP (A->G, G->T,\netc.).")), ToolInput(tag="in_sfs", input_type=Boolean(optional=True), prefix="--sfs", doc=InputDocumentation(doc="Report the site frequency spectrum of the variants.")), ToolInput(tag="in_mds", input_type=Boolean(optional=True), prefix="--mds", doc=InputDocumentation(doc="Report the pairwise genetic distance between the")), ToolInput(tag="in_gts_by_sample", input_type=Boolean(optional=True), prefix="--gts-by-sample", doc=InputDocumentation(doc="Report the count of each genotype class obs. per")), ToolInput(tag="in_gt_filter", input_type=String(optional=True), prefix="--gt-filter", doc=InputDocumentation(doc="Restrictions to apply to genotype values")), ToolInput(tag="in_samples_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--vars-by-sample      Report the number of variants observed in each sample."))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Stats_V0_1_0().translate("wdl")

