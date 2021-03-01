from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory

Pipits_Retrain_Rdp_V0_1_0 = CommandToolBuilder(tool="pipits_retrain_rdp", base_command=["pipits_retrain_rdp"], inputs=[ToolInput(tag="in_rdp_classifier_file", input_type=File(optional=True), prefix="-j", doc=InputDocumentation(doc="[REQUIRED] RDP Classifier .jar file")), ToolInput(tag="in_unite_training_data_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="[REQUIRED] UNITE training data - FASTA sequences downloaded\nfrom http://sourceforge.net/projects/rdp-\nclassifier/files/RDP_Classifier_TrainingData")), ToolInput(tag="in_unite_training_data_taxonomy", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="[REQUIRED] UNITE training data - taxonomy file downloaded\nfrom http://sourceforge.net/projects/rdp-\nclassifier/files/RDP_Classifier_TrainingData")), ToolInput(tag="in_output_directory_where", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory where files and settings for retrained\nparameters are stored.\n")), ToolInput(tag="in_re_trains", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rdp", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_classifier", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_where", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_where", type_hint=File()), doc=OutputDocumentation(doc="Output directory where files and settings for retrained\nparameters are stored.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Retrain_Rdp_V0_1_0().translate("wdl", allow_empty_container=True)

