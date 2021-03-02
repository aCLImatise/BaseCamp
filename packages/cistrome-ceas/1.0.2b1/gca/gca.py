from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Gca_V0_1_0 = CommandToolBuilder(tool="gca", base_command=["gca"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file of ChIP regions.")), ToolInput(tag="in_gt", input_type=File(optional=True), prefix="--gt", doc=InputDocumentation(doc="Gene annotation table. This can be a sqlite3 local db\nfile, BED file or genome version of UCSC. The BED file\nmust have an extension of '.bed'")), ToolInput(tag="in_span", input_type=Int(optional=True), prefix="--span", doc=InputDocumentation(doc="Span in search of ChIP regions from TSS and TTS,\nDEFAULT=3000bp")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="Experiment name. This will be used to name the output\nfile. If an experiment name is not given, input BED\nfile name will be used instead.")), ToolInput(tag="in_gn_group", input_type=File(optional=True), prefix="--gn-group", doc=InputDocumentation(doc="A particular group of genes of interest. If a txt file\nwith one column of gene names (eg RefSeq IDs in case of\nusing a refGene table) is given, gca returns the gene-\ncentered annotation of this particular gene group.")), ToolInput(tag="in_g_name_two", input_type=Int(optional=True), prefix="--gname2", doc=InputDocumentation(doc="The gene names of --gn-group will be regarded as\n'name2.' See the schema of the gene annotation table.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gca_V0_1_0().translate("wdl", allow_empty_container=True)

