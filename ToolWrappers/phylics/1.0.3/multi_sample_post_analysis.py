from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Multi_Sample_Post_Analysis_V0_1_0 = CommandToolBuilder(tool="multi_sample_post_analysis", base_command=["multi_sample_post_analysis"], inputs=[ToolInput(tag="in_n_permutations", input_type=Int(optional=True), prefix="--n_permutations", doc=InputDocumentation(doc="Number of permutations to execute the permutation test\nfor sample coesion score.")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Seed to initialize the pseudo-random generator used to\nperform the permutation test.")), ToolInput(tag="in_rec_lust", input_type=Int(optional=True), prefix="--reclust", doc=InputDocumentation(doc="If this option is specified, only the clustering part\nis executed with the specified number of clusters,\nunless --reinit option is specified (see below).")), ToolInput(tag="in_reinit", input_type=Boolean(optional=True), prefix="--reinit", doc=InputDocumentation(doc="This option has effect only if combined with the")), ToolInput(tag="in_clustering", input_type=String(optional=True), prefix="--clustering", doc=InputDocumentation(doc="It allows to recompute the entire")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose execution.")), ToolInput(tag="in_n_jobs", input_type=Int(optional=True), prefix="--n_jobs", doc=InputDocumentation(doc="Number of parallel jobs to speed up pvalue computation")), ToolInput(tag="in_seg_copy", input_type=String(), position=0, doc=InputDocumentation(doc="Sample name and cnvs filepath separated by ':'. At\nleast two samples must be provided.")), ToolInput(tag="in_clust_method", input_type=String(), position=1, doc=InputDocumentation(doc="Clustering method.")), ToolInput(tag="in_distance_metric", input_type=String(), position=2, doc=InputDocumentation(doc="Distance metric.")), ToolInput(tag="in_out_dir", input_type=String(), position=3, doc=InputDocumentation(doc="Path to the output directory (must exist)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multi_Sample_Post_Analysis_V0_1_0().translate("wdl", allow_empty_container=True)

