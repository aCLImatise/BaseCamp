from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Traitar_New_V0_1_0 = CommandToolBuilder(tool="traitar_new", base_command=["traitar", "new"], inputs=[ToolInput(tag="in_models_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory with phenotype models to be included")), ToolInput(tag="in_pf_acc_two_desc", input_type=Int(), position=1, doc=InputDocumentation(doc="a mapping between Pfam families and phenotype ids to")), ToolInput(tag="in_accessions", input_type=String(), position=2, doc=InputDocumentation(doc="pt_id2acc_desc  a mapping between phenotype ids and descriptions")), ToolInput(tag="in_hmm_model_f", input_type=String(), position=0, doc=InputDocumentation(doc="hmm database compatible with the phenotype archive")), ToolInput(tag="in_archive_name", input_type=String(), position=1, doc=InputDocumentation(doc="name of the model, which is created"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_New_V0_1_0().translate("wdl", allow_empty_container=True)

