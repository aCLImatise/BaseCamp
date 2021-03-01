from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float, Int

Merge_Midas_Py_Species_V0_1_0 = CommandToolBuilder(tool="merge_midas.py_species", base_command=["merge_midas.py", "species"], inputs=[ToolInput(tag="in_input_sample_directories", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Input to sample directories output by run_midas.py; see '-t' for details")), ToolInput(tag="in_specify_one_ex", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Specify one of the following:\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\ndir: -i is a directory containing all samples (ex: /samples)\nfile: -i is a file of paths to samples (ex: /sample_paths.txt)")), ToolInput(tag="in_path_reference_databaseby", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Path to reference database\nBy default the MIDAS_DB environmental variable is used")), ToolInput(tag="in_sample_depth", input_type=Float(optional=True), prefix="--sample_depth", doc=InputDocumentation(doc="Minimum per-sample marker-gene-depth for estimating species prevalence (1.0)")), ToolInput(tag="in_max_samples", input_type=Int(optional=True), prefix="--max_samples", doc=InputDocumentation(doc="Maximum number of samples to process.\nUseful for testing (use all)")), ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc="Directory for output files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Midas_Py_Species_V0_1_0().translate("wdl", allow_empty_container=True)

