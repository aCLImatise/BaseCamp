from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Feelnc_Classifier_Pl_V0_1_0 = CommandToolBuilder(tool="FEELnc_classifier.pl", base_command=["FEELnc_classifier.pl"], inputs=[ToolInput(tag="in_biotype", input_type=Boolean(optional=True), prefix="--biotype", doc=InputDocumentation(doc="Print the biotype of each transcripts in the output")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Specify the name for the log file")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Open man page")), ToolInput(tag="in_verbosity", input_type=Boolean(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of verbosity")), ToolInput(tag="in_l_ncrna", input_type=File(optional=True), prefix="--lncrna", doc=InputDocumentation(doc="Specify the lncRNA GTF file")), ToolInput(tag="in_mrna", input_type=File(optional=True), prefix="--mrna", doc=InputDocumentation(doc="Specify the annotation GTF file (file of protein coding annotation)")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Size of the window around the lncRNA to compute interactions/classification [default 10000]")), ToolInput(tag="in_max_window", input_type=Int(optional=True), prefix="--maxwindow", doc=InputDocumentation(doc="Maximal size of the window during the expansion process [default 10000]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feelnc_Classifier_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

