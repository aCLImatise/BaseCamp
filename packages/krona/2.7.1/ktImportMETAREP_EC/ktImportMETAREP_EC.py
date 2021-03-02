from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportmetarep_Ec_V0_1_0 = CommandToolBuilder(tool="ktImportMETAREP_EC", base_command=["ktImportMETAREP-EC"], inputs=[ToolInput(tag="in_meta_rep_folder", input_type=String(), position=0, doc=InputDocumentation(doc="Unpacked METAREP data folder. By default, separate datasets\nwill be created for each input (see [-c]).")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="A name to show in the list of datasets in the Krona chart\n(if multiple input files are present and [-c] is not\nspecified). By default, the basename of the file will be\nused.\n_________"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportmetarep_Ec_V0_1_0().translate("wdl", allow_empty_container=True)

