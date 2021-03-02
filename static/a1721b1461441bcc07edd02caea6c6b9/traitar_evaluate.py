from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Traitar_Evaluate_V0_1_0 = CommandToolBuilder(tool="traitar_evaluate", base_command=["traitar", "evaluate"], inputs=[ToolInput(tag="in_are_pt_ids", input_type=Boolean(optional=True), prefix="--are_pt_ids", doc=InputDocumentation(doc="set if the gold standard phenotype are index via\nphenotype ids rather than accessions")), ToolInput(tag="in_phenotype_archive", input_type=String(optional=True), prefix="--phenotype_archive", doc=InputDocumentation(doc="need if gold standard uses an accession index for\nmapping")), ToolInput(tag="in_min_samples", input_type=Int(optional=True), prefix="--min_samples", doc=InputDocumentation(doc="minimum number of positive and negative samples to\nconsider phenotypes for calculation of the macro\naccuracy\n")), ToolInput(tag="in_trait_ar_pred_f", input_type=String(), position=0, doc=InputDocumentation(doc="phenotype prediction matrix as return by Traitar")), ToolInput(tag="in_gold_standard_f", input_type=String(), position=1, doc=InputDocumentation(doc="phenotype matrix with standard of truth")), ToolInput(tag="in_out", input_type=String(), position=2, doc=InputDocumentation(doc="output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_Evaluate_V0_1_0().translate("wdl", allow_empty_container=True)

