from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Histories_Delete_Dataset_V0_1_0 = CommandToolBuilder(tool="parsec_histories_delete_dataset", base_command=["parsec", "histories", "delete_dataset"], inputs=[ToolInput(tag="in_purge", input_type=Boolean(optional=True), prefix="--purge", doc=InputDocumentation(doc="if ``True``, also purge (permanently delete) the dataset")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc=".. note::             For the purge option to work, the Galaxy\ninstance must have the             ``allow_user_dataset_purge``\noption set to ``true`` in the             ``config/galaxy.yml``\nconfiguration file."))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Delete_Dataset_V0_1_0().translate("wdl")

