from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Glimmerhmm_V0_1_0 = CommandToolBuilder(tool="glimmerhmm", base_command=["glimmerhmm"], inputs=[ToolInput(tag="in_protein_domain_searches", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="If protein domain searches are available, read them from file file_name")), ToolInput(tag="in_training_directory_specified", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Training directory is specified by dir_name (introduced for compatibility with earlier versions)")), ToolInput(tag="in_print_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Print output in file_name; if n>1 for top best predictions, output is in file_name.1, file_name.2, ... , file_name.n f")), ToolInput(tag="in_print_top_best", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Print top n best predictions")), ToolInput(tag="in_print_output_gff", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Print output in gff format")), ToolInput(tag="in_use_svm_predictions", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Don't use svm splice site predictions")), ToolInput(tag="in_make_partial_predictions", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Don't make partial gene predictions")), ToolInput(tag="in_genome_one_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_training_dir_for_genome_one", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glimmerhmm_V0_1_0().translate("wdl", allow_empty_container=True)

