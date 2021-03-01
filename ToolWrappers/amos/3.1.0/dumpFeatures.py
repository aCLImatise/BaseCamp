from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dumpfeatures_V0_1_0 = CommandToolBuilder(tool="dumpFeatures", base_command=["dumpFeatures"], inputs=[ToolInput(tag="in_report_contig_iids", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="report contig iids instead of eids")), ToolInput(tag="in_report_coordinates_instread", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="report ungapped coordinates instread of gapped coordinates")), ToolInput(tag="in_report_features_gff", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="report features in .gff format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpfeatures_V0_1_0().translate("wdl", allow_empty_container=True)

