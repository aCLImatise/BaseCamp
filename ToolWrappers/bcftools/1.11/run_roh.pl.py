from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Float, Boolean

Run_Roh_Pl_V0_1_0 = CommandToolBuilder(tool="run_roh.pl", base_command=["run-roh.pl"], inputs=[ToolInput(tag="in_af_an_not_s", input_type=File(optional=True), prefix="--af-annots", doc=InputDocumentation(doc="Allele frequency annotations [1000GP-AFs/AFs.tab.gz]")), ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--indir", doc=InputDocumentation(doc="Input directory with VCF files")), ToolInput(tag="in_include", input_type=String(optional=True), prefix="--include", doc=InputDocumentation(doc="Select sites for which the expression is true")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Exclude sites for which the epxression is true")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Filter input regions shorter than this [1e6]")), ToolInput(tag="in_gen_map", input_type=Directory(optional=True), prefix="--genmap", doc=InputDocumentation(doc="Directory with genetic map in IMPUTE2 format (optional)")), ToolInput(tag="in_rec_rate", input_type=Float(optional=True), prefix="--rec-rate", doc=InputDocumentation(doc="constant recombination rate per bp (optional)")), ToolInput(tag="in_min_markers", input_type=Int(optional=True), prefix="--min-markers", doc=InputDocumentation(doc="Filter input regions with fewer marker than this [100]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_min_qual", input_type=Int(optional=True), prefix="--min-qual", doc=InputDocumentation(doc="Filter input regions with quality smaller than this [10]")), ToolInput(tag="in_roh_args", input_type=String(optional=True), prefix="--roh-args", doc=InputDocumentation(doc="Extra arguments to pass to bcftools roh")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Quiet output, do not print commands"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/bcftools:1.11--h7c999a4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Roh_Pl_V0_1_0().translate("wdl")

