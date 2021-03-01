from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory, Int, File

Hulk_Smash_V0_1_0 = CommandToolBuilder(tool="hulk_smash", base_command=["hulk", "smash"], inputs=[ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="tells HULK which sketching algorithm to use [histosketch kmv khf] (default 'histosketch')")), ToolInput(tag="in_banner_matrix", input_type=Boolean(optional=True), prefix="--bannerMatrix", doc=InputDocumentation(doc="write a matrix file for banner")), ToolInput(tag="in_metric", input_type=String(optional=True), prefix="--metric", doc=InputDocumentation(doc="tells HULK which distance metric to use [jaccard weightedjaccard] (default 'jaccard')")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="recursively search the supplied sketch directory (-d)")), ToolInput(tag="in_sketch_dir", input_type=Directory(optional=True), prefix="--sketchDir", doc=InputDocumentation(doc="the directory containing the sketches to smash (compare)... (default './')")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmerSize", doc=InputDocumentation(doc="minimizer k-mer length (default 21)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="filename for log file, if omitted then STDOUT used by default")), ToolInput(tag="in_outfile", input_type=Directory(optional=True), prefix="--outFile", doc=InputDocumentation(doc="directory and basename for saving the outfile(s) (default './hulk-20200909212823')")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="number of processors to use (default 1)")), ToolInput(tag="in_profiling", input_type=Boolean(optional=True), prefix="--profiling", doc=InputDocumentation(doc="create the files needed to profile HULK using the go tool pprof"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hulk_Smash_V0_1_0().translate("wdl", allow_empty_container=True)

