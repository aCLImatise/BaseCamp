from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Classifier_Samplefile_V0_1_0 = CommandToolBuilder(tool="classifier_samplefile", base_command=["classifier", "samplefile"], inputs=[ToolInput(tag="in_classify", input_type=String(), position=0, doc=InputDocumentation(doc="- classify one or multiple samples")), ToolInput(tag="in_lib_compare", input_type=String(), position=0, doc=InputDocumentation(doc="- compare two samples")), ToolInput(tag="in_loot", input_type=String(), position=1, doc=InputDocumentation(doc="- leave one (sequence or taxon) out accuracy testing")), ToolInput(tag="in_merge_detail", input_type=String(), position=2, doc=InputDocumentation(doc="- merge classification detail result files to create a taxon assignment counts file")), ToolInput(tag="in_merge_count", input_type=String(), position=3, doc=InputDocumentation(doc="- merge multiple taxon assignment count files to into one count file")), ToolInput(tag="in_rm_dup_seq", input_type=String(), position=0, doc=InputDocumentation(doc="- remove identical or any sequence contained by another sequence")), ToolInput(tag="in_tax_a_sim", input_type=String(), position=0, doc=InputDocumentation(doc="- calculate and plot the similarities within taxa")), ToolInput(tag="in_train", input_type=String(), position=1, doc=InputDocumentation(doc="- retrain classifier")), ToolInput(tag="in_version", input_type=String(), position=2, doc=InputDocumentation(doc="- taxonomy versions of the pre-compiled training sets"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classifier_Samplefile_V0_1_0().translate("wdl", allow_empty_container=True)

