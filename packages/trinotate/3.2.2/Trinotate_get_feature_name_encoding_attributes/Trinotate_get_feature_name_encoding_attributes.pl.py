from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trinotate_Get_Feature_Name_Encoding_Attributes_Pl_V0_1_0 = CommandToolBuilder(tool="Trinotate_get_feature_name_encoding_attributes.pl", base_command=["Trinotate_get_feature_name_encoding_attributes.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trinotate_Get_Feature_Name_Encoding_Attributes_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

