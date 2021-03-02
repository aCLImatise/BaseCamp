from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Anvi_Script_Gen_Scg_Domain_Classifier_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_scg_domain_classifier", base_command=["anvi-script-gen-scg-domain-classifier"], inputs=[ToolInput(tag="in_genomes_dir", input_type=Directory(optional=True), prefix="--genomes-dir", doc=InputDocumentation(doc="This should be a directory that contains a directory\nper domain for single-copy core gene collections a\ngiven version of anvi'o knows about. For instance, if\nthere are collections for archaea, bacteria, and\neukarya, then this directory should contain\nsubdirectories with these names. Contents of which\nshould be contigs databases that belong to those\ndomains. These genomes will be used to generate the\nclassifier. (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name for the classifier. (default:\ndomain.classifier)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name for the classifier. (default:\ndomain.classifier)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Scg_Domain_Classifier_V0_1_0().translate("wdl")

