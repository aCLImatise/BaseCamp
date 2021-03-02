from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Behst_Py_V0_1_0 = CommandToolBuilder(tool="behst.py", base_command=["behst.py"], inputs=[ToolInput(tag="in_target_extension", input_type=Int(optional=True), prefix="--target-extension", doc=InputDocumentation(doc="target extension basepair integer. Default is 9400.")), ToolInput(tag="in_query_extension", input_type=Int(optional=True), prefix="--query-extension", doc=InputDocumentation(doc="query extension basepair integer. Default is 24100.")), ToolInput(tag="in_gene_annotation_file", input_type=File(optional=True), prefix="--gene-annotation-file", doc=InputDocumentation(doc="path of the gene annotation file (.gtf format).\nDefault is the GENCODE annotation v.19 file\n(gencode.v19.annotation_withproteinids.gtf).")), ToolInput(tag="in_transcript_file", input_type=File(optional=True), prefix="--transcript-file", doc=InputDocumentation(doc="path to the principal transcript file (.bed format).\nDefault is APPRIS transcript 2017_01.v20 file\n(appris_data_principal.bed)")), ToolInput(tag="in_interaction_file", input_type=File(optional=True), prefix="--interaction-file", doc=InputDocumentation(doc="path to the chromatin interactions file (.hiccups\nformat). Default is the Hi-C HiCCUPS from Lieberman-\nAiden 2014 (hic_8celltypes.hiccups).")), ToolInput(tag="in_input_bed_file", input_type=String(), position=0, doc=InputDocumentation(doc="input BED file of genomic regions")), ToolInput(tag="in_be_hst_data_files_folder", input_type=String(), position=1, doc=InputDocumentation(doc="path to the folder where you downloaded the default\nBEHST data files with ./download_behst_data.sh"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Behst_Py_V0_1_0().translate("wdl", allow_empty_container=True)

