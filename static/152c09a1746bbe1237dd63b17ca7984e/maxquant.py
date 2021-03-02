from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Maxquant_V0_1_0 = CommandToolBuilder(tool="maxquant", base_command=["maxquant"], inputs=[ToolInput(tag="in_partial_processing", input_type=Boolean(optional=True), prefix="--partial-processing", doc=InputDocumentation(doc="(Default: 1) Start processing from the\nspecified job id. Can be used to continue/redo\nparts of the processing. Job id's can be\nobtained in the MaxQuant GUI partial\nprocessing view or from --dryrun option. The\nfirst job id is 1.")), ToolInput(tag="in_partial_processing_end", input_type=Boolean(optional=True), prefix="--partial-processing-end", doc=InputDocumentation(doc="(Default: 2147483647) Finish processing at the\nspecified job id. 1-based indexing is used.")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dryrun", doc=InputDocumentation(doc="Print job ids and job names table.")), ToolInput(tag="in_create", input_type=Boolean(optional=True), prefix="--create", doc=InputDocumentation(doc="Create a template of MaxQuant parameter file.")), ToolInput(tag="in_change_folder", input_type=Boolean(optional=True), prefix="--changeFolder", doc=InputDocumentation(doc="Change folder location for fasta and raw files\n(presuming all raw files are in the same\nfolder).Expecting three locations separated by\nspace - location of a new parameter file file,\na new folder of fasta files and a new folder\nof raw files.")), ToolInput(tag="in_complete", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_an", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_existing", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_mq_par_dot_xml", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maxquant_V0_1_0().translate("wdl", allow_empty_container=True)

