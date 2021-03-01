from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, File

Addfeaturetomatrix_V0_1_0 = CommandToolBuilder(tool="addFeatureToMatrix", base_command=["addFeatureToMatrix"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="deeptools matrix (default: None)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output matrix (default: None)")), ToolInput(tag="in_feature_dot_tables", input_type=Array(t=String(), optional=True), prefix="--feature.tables", doc=InputDocumentation(doc="gene id tables or name based tables, tables should be\nspace-separated. (default: None)")), ToolInput(tag="in_annotation_feature", input_type=File(optional=True), prefix="--annotationFeature", doc=InputDocumentation(doc="annotation file can be filtered by a feature such as\ngene, exon or transcript (default: None)")), ToolInput(tag="in_filtered_genome_gtf_output_file", input_type=File(optional=True), prefix="--filteredGenomeGtfOutputFile", doc=InputDocumentation(doc="saving filtered annotation file if --annotationFeature\n(default: None)")), ToolInput(tag="in_genome_gtf", input_type=String(optional=True), prefix="--genomeGtf", doc=InputDocumentation(doc="genome annotation (gtf) to map peaks to closest gene.\nWill be filtered through '--annotationFeature'\n(default: None)")), ToolInput(tag="in_feature_names", input_type=Array(t=String(), optional=True), prefix="--featureNames", doc=InputDocumentation(doc="A list of features of interest from gene id tables or\nname based tables (default: ['log2(FC)'])")), ToolInput(tag="in_feature_id_column", input_type=String(optional=True), prefix="--featureIdColumn", doc=InputDocumentation(doc="name of the column includes ids/names (default:\nGeneID)")), ToolInput(tag="in_reference_point", input_type=String(optional=True), prefix="--referencePoint", doc=InputDocumentation(doc="If closest TSS or TES is needed, otherwise closest\ngene body will be found (default: None)")), ToolInput(tag="in_closest_genes_output", input_type=File(optional=True), prefix="--closestGenesOutput", doc=InputDocumentation(doc="A bed file to save the closest genes (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addfeaturetomatrix_V0_1_0().translate("wdl", allow_empty_container=True)

